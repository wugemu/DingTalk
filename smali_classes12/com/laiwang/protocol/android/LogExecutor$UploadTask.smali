.class Lcom/laiwang/protocol/android/LogExecutor$UploadTask;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LogExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/LogExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadTask"
.end annotation


# instance fields
.field callback:Lcom/laiwang/protocol/lang/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field date:Ljava/util/Date;

.field final synthetic this$0:Lcom/laiwang/protocol/android/LogExecutor;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/LogExecutor;Ljava/util/Date;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/LogExecutor;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p3, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->this$0:Lcom/laiwang/protocol/android/LogExecutor;

    .line 159
    const-string/jumbo v0, "upload-log"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 160
    iput-object p2, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->date:Ljava/util/Date;

    .line 161
    iput-object p3, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->callback:Lcom/laiwang/protocol/lang/Callback;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0xb

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->date:Ljava/util/Date;

    if-nez v4, :cond_1

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->date:Ljava/util/Date;

    .line 175
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upload files:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->date:Ljava/util/Date;

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->getLogFileName(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "upload file name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 171
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 172
    .local v1, "d":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->date:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 183
    .end local v1    # "d":Ljava/util/Calendar;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v2}, Lcom/laiwang/protocol/android/LogExecutor;->upload(Ljava/io/File;)V

    .line 186
    iget-object v4, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->callback:Lcom/laiwang/protocol/lang/Callback;

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;->callback:Lcom/laiwang/protocol/lang/Callback;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    goto :goto_1
.end method
