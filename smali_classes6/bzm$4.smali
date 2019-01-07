.class final Lbzm$4;
.super Ljava/lang/Object;
.source "NecessaryPermissionsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbzm;


# direct methods
.method constructor <init>(Lbzm;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lbzm;

    .prologue
    .line 185
    iput-object p1, p0, Lbzm$4;->b:Lbzm;

    iput-object p2, p0, Lbzm$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lbzm$4;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lbzm$4;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 190
    iget-object v0, p0, Lbzm$4;->b:Lbzm;

    invoke-static {v0}, Lbzm;->b(Lbzm;)V

    .line 192
    :cond_0
    return-void
.end method
