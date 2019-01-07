.class public final Lfve$10;
.super Ljava/lang/Object;
.source "UserBusinessProfilePresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfve;


# direct methods
.method public constructor <init>(Lfve;)V
    .locals 0
    .param p1, "this$0"    # Lfve;

    .prologue
    .line 244
    iput-object p1, p0, Lfve$10;->a:Lfve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lfve$10;->a:Lfve;

    .line 1046
    iget-object v0, v0, Lfve;->a:Lfvd$a;

    .line 247
    invoke-interface {v0}, Lfvd$a;->b()V

    .line 248
    return-void
.end method
