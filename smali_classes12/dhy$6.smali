.class public final Ldhy$6;
.super Ljava/lang/Object;
.source "ForwardUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldhy$a;


# direct methods
.method public constructor <init>(Ldhy$a;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Ldhy$6;->a:Ldhy$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 364
    iget-object v0, p0, Ldhy$6;->a:Ldhy$a;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Ldhy$6;->a:Ldhy$a;

    invoke-interface {v0}, Ldhy$a;->a()V

    .line 367
    :cond_0
    return-void
.end method
