using MSGService;

var builder = Host.CreateApplicationBuilder(args);

builder.Configuration.AddCommandLine(args);
builder.Services
    .AddSingleton<Worker>()
    .AddHostedService<Worker>()
    .AddWindowsService(options => {
        options.ServiceName = "MSGarnet Service";
    });

var host = builder.Build();
host.Run();
