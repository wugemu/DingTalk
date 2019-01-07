.class public final Lhly;
.super Ljava/lang/Object;
.source "MiniappConfig.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    sput-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "H5_SWSYNCAPILIST"

    const-string/jumbo v2, "[\"ddExec\",\"getSystemInfo\",\"getStartupParams\",\"internalAPI\",\"getBackgroundAudioTitleSync\",\"setBackgroundAudioTitleSync\",\"getBackgroundAudioSrcSync\",\"setBackgroundAudioSrcSync\",\"getBackgroundAudioCoverImgUrlSync\",\"setBackgroundAudioCoverImgUrlSync\",\"getBackgroundAudioStatusSync\",\"getBackgroundAudioDurationSync\",\"getBackgroundAudioCurrentTimeSync\",\"setAudioSrcSync\",\"getAudioSrcSync\",\"setAudioStartTimeSync\",\"getAudioStartTimeSync\",\"setAudioAutoPlaySync\",\"getAudioAutoPlaySync\",\"setAudioLoopSync\",\"getAudioLoopSync\",\"getAudioDurationSync\",\"getAudioCurrentTimeSync\",\"getAudioPausedSync\"]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "h5_webViewConfig"

    const-string/jumbo v2, "{\"h5_enableExternalWebView\":\"YES\",\"h5_externalWebViewUsageRule\":{},\"h5_externalWebViewSdkVersion\":{\"min\":11,\"max\":28}}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "h5_forceUc"

    const-string/jumbo v2, "{\"globalFlag\":true}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "smallprogram_debug_close_switch"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "h5_logNewBlankScreenConfig"

    const-string/jumbo v2, "{\"enable\":\"YES\",\"wifiLimit\":10,\"elseNetWork\":30,\"testFilter\":6,\"appId\":\".*\",\"script\":\"try{(function(){if(location.href.indexOf(\'#\')<=0){return{\'isDSLError\':false,\'detail\':\'\'};}var isDSLError=false;if((document.getElementsByClassName(\'tiny-page\').length==0||document.getElementsByClassName(\'tiny-page\')[0].childNodes.length==0)&&(document.getElementsByClassName(\'a-page\').length==0||document.getElementsByClassName(\'a-page\')[0].childNodes.length==0)){isDSLError=true;}if(!isDSLError){isDSLError=true;var childNodes=document.getElementsByClassName(\'tiny-page\').length>0?document.getElementsByClassName(\'tiny-page\')[0].childNodes:document.getElementsByClassName(\'a-page\')[0].childNodes;for(var i=0;i<childNodes.length;i++){if(childNodes[i].childNodes.length>0){isDSLError=false;break;}}}return isDSLError?{\'isDSLError\':true,\'detail\':document.getElementsByTagName(\'body\')[0].innerHTML}:{\'isDSLError\':false,\'detail\':\'\'};})()}catch(err){};\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "h5_dslCheckConfig"

    const-string/jumbo v2, "{\"ucCheck\":\"YES\",\"closeCheck\":\"NO\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lhly;->a:Ljava/util/Map;

    const-string/jumbo v1, "TSBS"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lhly;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
