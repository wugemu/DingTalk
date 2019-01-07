.class public Lcom/taobao/weex/InitConfig$Builder;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/InitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

.field drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

.field framework:Ljava/lang/String;

.field httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

.field mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

.field mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

.field soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

.field utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/weex/InitConfig;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    new-instance v0, Lcom/taobao/weex/InitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/InitConfig;-><init>(Lcom/taobao/weex/InitConfig$1;)V

    .line 174
    .local v0, "config":Lcom/taobao/weex/InitConfig;
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 175
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .line 176
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/adapter/IDrawableLoader;

    .line 177
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 178
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$502(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 179
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$602(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 180
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$702(Lcom/taobao/weex/InitConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$802(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/adapter/URIAdapter;

    .line 182
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$902(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .line 183
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1002(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 184
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 185
    return-object v0
.end method

.method public setClassLoaderAdapter(Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "classLoaderAdapter"    # Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 169
    return-object p0
.end method

.method public setDrawableLoader(Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "drawableLoader"    # Lcom/taobao/weex/adapter/IDrawableLoader;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    .line 129
    return-object p0
.end method

.method public setFramework(Ljava/lang/String;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->framework:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "httpAdapter"    # Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 119
    return-object p0
.end method

.method public setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "imgAdapter"    # Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .line 124
    return-object p0
.end method

.method public setJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "JSExceptionAdapter"    # Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 149
    return-object p0
.end method

.method public setSoLoader(Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "loader"    # Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 154
    return-object p0
.end method

.method public setStorageAdapter(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "storageAdapter"    # Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 139
    return-object p0
.end method

.method public setURIAdapter(Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "URIAdapter"    # Lcom/taobao/weex/adapter/URIAdapter;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    .line 144
    return-object p0
.end method

.method public setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 134
    return-object p0
.end method

.method public setWebSocketAdapterFactory(Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .param p1, "factory"    # Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .line 164
    return-object p0
.end method
