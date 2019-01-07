.class final Lbnv$5;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnv;


# direct methods
.method constructor <init>(Lbnv;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 504
    iput-object p1, p0, Lbnv$5;->a:Lbnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 507
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 508
    return-void
.end method
