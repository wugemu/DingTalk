.class final Lbnv$a$2;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnv$a;


# direct methods
.method constructor <init>(Lbnv$a;)V
    .locals 0
    .param p1, "this$1"    # Lbnv$a;

    .prologue
    .line 1489
    iput-object p1, p0, Lbnv$a$2;->a:Lbnv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1492
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1493
    return-void
.end method
