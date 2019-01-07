.class public final Laes$a;
.super Ljava/lang/Object;
.source "DingtalkMailDailyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laes;


# direct methods
.method private constructor <init>(Laes;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Laes$a;->a:Laes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Laes;B)V
    .locals 0
    .param p1, "x0"    # Laes;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Laes$a;-><init>(Laes;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 370
    iget-object v1, p0, Laes$a;->a:Laes;

    .line 1047
    iget-object v1, v1, Laes;->k:Landroid/os/Handler;

    .line 370
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 371
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 372
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Laes$a;->a:Laes;

    .line 2047
    iget-object v1, v1, Laes;->k:Landroid/os/Handler;

    .line 373
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    return-void
.end method
