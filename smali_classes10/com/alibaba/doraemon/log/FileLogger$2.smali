.class Lcom/alibaba/doraemon/log/FileLogger$2;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mFileNameSdf:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$2;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger$2;->mFileNameSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public getNameFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string/jumbo v0, ""

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$2;->mFileNameSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public parseDateFromName(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-object v1

    .line 120
    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "dateInfo":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$2;->mFileNameSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    const-string/jumbo v2, "FileLogger"

    const-string/jumbo v3, "parse time error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
