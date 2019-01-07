.class Lcom/alibaba/doraemon/log/FileLogger$1;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Lcom/alibaba/doraemon/log/FileLogger$BytePool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$1;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    new-array v0, p1, [B

    return-object v0
.end method

.method public returnBuf([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 99
    return-void
.end method
