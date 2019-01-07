.class public final Lewn$24;
.super Lewj$a;
.source "TeleConfQuickStartCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lewn;


# direct methods
.method public constructor <init>(Lewn;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 545
    iput-object p1, p0, Lewn$24;->b:Lewn;

    iput-object p2, p0, Lewn$24;->a:Lcma;

    invoke-direct {p0}, Lewj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 550
    const/4 v0, -0x1

    .line 551
    .local v0, "clickMenu":I
    if-nez p1, :cond_2

    .line 553
    const/4 v0, 0x1

    .line 558
    :cond_0
    :goto_0
    iget-object v1, p0, Lewn$24;->a:Lcma;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lewn$24;->a:Lcma;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 561
    :cond_1
    return-void

    .line 554
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 556
    const/4 v0, 0x2

    goto :goto_0
.end method
