.class public final Lcom/alibaba/wukong/upload/UploadParams;
.super Ljava/lang/Object;
.source "UploadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/upload/UploadParams$AuthType;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/wukong/upload/UploadParams;->c:Z

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/wukong/upload/UploadParams;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 38
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    iput-object v0, p0, Lcom/alibaba/wukong/upload/UploadParams;->f:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 114
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V
    .locals 0
    .param p1, "authType"    # Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/alibaba/wukong/upload/UploadParams;->f:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    goto :goto_0
.end method
