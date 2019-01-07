.class final Lbat$5;
.super Ljava/lang/Object;
.source "DingUnReadPresenterV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbat;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbat;


# direct methods
.method constructor <init>(Lbat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbat;

    .prologue
    .line 186
    iput-object p1, p0, Lbat$5;->c:Lbat;

    iput-object p2, p0, Lbat$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lbat$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lbat$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lbat$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lbat$5;->c:Lbat;

    invoke-static {v0}, Lbat;->a(Lbat;)Lbaq$g;

    move-result-object v0

    invoke-interface {v0}, Lbaq$g;->e()V

    .line 191
    return-void
.end method
