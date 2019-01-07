.class final Lhzt$1;
.super Ljava/lang/Object;
.source "TraceUtils.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhzt;->a(JJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lhzt$1;->a:Ljava/io/File;

    iput-object p2, p0, Lhzt$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorDesc"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lhzt$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 130
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "totalSize"    # J
    .param p3, "uploadSize"    # J
    .param p5, "progress"    # I

    .prologue
    .line 96
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 93
    check-cast p1, Lifx;

    .line 1100
    const-string/jumbo v0, "TraceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload trace finish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhzt$1;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lhzt$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1103
    new-instance v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;

    invoke-direct {v6}, Lcom/alibaba/wukong/idl/log/models/UploadModel;-><init>()V

    .line 2026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1104
    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->mediaId:Ljava/lang/String;

    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->timestamp:Ljava/lang/Long;

    .line 1106
    iget-object v0, p0, Lhzt$1;->b:Ljava/util/Map;

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->callbackParams:Ljava/util/Map;

    .line 1108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->callbackType:Ljava/lang/Integer;

    .line 1110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->zip:Ljava/lang/Integer;

    .line 1112
    new-instance v0, Lhzt$1$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lhzt$1$1;-><init>(Lhzt$1;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Lcom/alibaba/wukong/idl/log/models/UploadModel;)V

    .line 1124
    invoke-virtual {v0}, Lhzt$1$1;->start()V

    .line 93
    return-void
.end method
