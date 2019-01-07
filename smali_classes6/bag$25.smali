.class final Lbag$25;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lbho$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbag;


# direct methods
.method constructor <init>(Lbag;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 634
    iput-object p1, p0, Lbag$25;->b:Lbag;

    iput-object p2, p0, Lbag$25;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 637
    iget-object v0, p0, Lbag$25;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 638
    iget-object v0, p0, Lbag$25;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbaf$b;->b(Ljava/lang/String;)V

    .line 640
    :cond_0
    return-void
.end method
