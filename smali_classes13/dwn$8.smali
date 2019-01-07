.class final Ldwn$8;
.super Ljava/lang/Object;
.source "WorkItemBoxViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldwn;


# direct methods
.method constructor <init>(Ldwn;)V
    .locals 0
    .param p1, "this$0"    # Ldwn;

    .prologue
    .line 378
    iput-object p1, p0, Ldwn$8;->a:Ldwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 381
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 382
    return-void
.end method
