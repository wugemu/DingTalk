.class final Lacs$2;
.super Ljava/util/TimerTask;
.source "MailNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacs;->a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacs;


# direct methods
.method constructor <init>(Lacs;)V
    .locals 0
    .param p1, "this$0"    # Lacs;

    .prologue
    .line 304
    iput-object p1, p0, Lacs$2;->a:Lacs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lacs$2;->a:Lacs;

    invoke-static {v0}, Lacs;->b(Lacs;)V

    .line 308
    return-void
.end method
