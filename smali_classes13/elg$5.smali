.class final Lelg$5;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelg;->a(Landroid/app/Activity;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelg;


# direct methods
.method constructor <init>(Lelg;)V
    .locals 0
    .param p1, "this$0"    # Lelg;

    .prologue
    .line 350
    iput-object p1, p0, Lelg$5;->a:Lelg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v0, p0, Lelg$5;->a:Lelg;

    invoke-static {v0}, Lelg;->f(Lelg;)V

    .line 354
    return-void
.end method
