.class final Lacv$e$3;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacv$e;


# direct methods
.method constructor <init>(Lacv$e;)V
    .locals 0
    .param p1, "this$0"    # Lacv$e;

    .prologue
    .line 1268
    iput-object p1, p0, Lacv$e$3;->a:Lacv$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1271
    const-string/jumbo v0, "pref_key_mail_revoke_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1272
    iget-object v0, p0, Lacv$e$3;->a:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lacv;->a(Lacv;Z)Z

    .line 1273
    iget-object v0, p0, Lacv$e$3;->a:Lacv$e;

    iget-object v0, v0, Lacv$e;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    return-void
.end method
