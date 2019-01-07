.class final Lbas$4;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenterV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbas;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbas;


# direct methods
.method constructor <init>(Lbas;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbas;

    .prologue
    .line 152
    iput-object p1, p0, Lbas$4;->c:Lbas;

    iput-object p2, p0, Lbas$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lbas$4;->b:Ljava/lang/String;

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
    .line 155
    iget-object v0, p0, Lbas$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lbas$4;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lbas$4;->c:Lbas;

    invoke-static {v0}, Lbas;->a(Lbas;)Lbaq$c;

    move-result-object v0

    invoke-interface {v0}, Lbaq$c;->e()V

    .line 157
    return-void
.end method
