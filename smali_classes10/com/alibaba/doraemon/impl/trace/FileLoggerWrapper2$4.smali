.class Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$4;
.super Ljava/lang/Object;
.source "FileLoggerWrapper2.java"

# interfaces
.implements Lcom/alibaba/doraemon/log/FileLogger$BytePool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$4;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 154
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public returnBuf([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 159
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    return-void
.end method
