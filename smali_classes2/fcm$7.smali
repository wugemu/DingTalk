.class final Lfcm$7;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcm;


# direct methods
.method constructor <init>(Lfcm;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 508
    iput-object p1, p0, Lfcm$7;->a:Lfcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 511
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 512
    return-void
.end method
