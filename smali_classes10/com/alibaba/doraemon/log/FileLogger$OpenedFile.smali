.class Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;
.super Ljava/lang/Object;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenedFile"
.end annotation


# instance fields
.field public mFile:Ljava/io/File;

.field public mFileChannel:Ljava/nio/channels/FileChannel;

.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
