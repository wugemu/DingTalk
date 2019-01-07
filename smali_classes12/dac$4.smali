.class final Ldac$4;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldac;


# direct methods
.method constructor <init>(Ldac;)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 321
    iput-object p1, p0, Ldac$4;->a:Ldac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 326
    return-void
.end method
