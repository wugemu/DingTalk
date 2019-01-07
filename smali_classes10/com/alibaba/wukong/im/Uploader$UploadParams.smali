.class public Lcom/alibaba/wukong/im/Uploader$UploadParams;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadParams"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private message:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/wukong/im/Uploader$UploadParams;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/wukong/im/Uploader$UploadParams;->message:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/wukong/im/Uploader$UploadParams;->filePath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMessage(Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/wukong/im/Uploader$UploadParams;->message:Lcom/alibaba/wukong/im/Message;

    .line 43
    return-void
.end method
