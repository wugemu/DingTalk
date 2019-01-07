.class final Lcut$1;
.super Ljava/lang/Object;
.source "DingVoiceToViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcut;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcut;


# direct methods
.method constructor <init>(Lcut;)V
    .locals 0
    .param p1, "this$0"    # Lcut;

    .prologue
    .line 21
    iput-object p1, p0, Lcut$1;->a:Lcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    iget-object v0, p0, Lcut$1;->a:Lcut;

    iget-object v0, v0, Lcut;->Y:Ldac;

    .line 1660
    iget-object v0, v0, Ldac;->i:Lcup;

    .line 24
    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcut$1;->a:Lcut;

    iget-object v0, v0, Lcut;->Y:Ldac;

    .line 2660
    iget-object v0, v0, Ldac;->i:Lcup;

    .line 25
    iget-object v1, p0, Lcut$1;->a:Lcut;

    iget-object v1, v1, Lcut;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcup;->a(Landroid/app/Activity;)V

    .line 27
    :cond_0
    return-void
.end method
