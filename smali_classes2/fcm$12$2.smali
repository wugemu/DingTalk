.class final Lfcm$12$2;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfcm$12;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcm$12;


# direct methods
.method constructor <init>(Lfcm$12;)V
    .locals 0
    .param p1, "this$1"    # Lfcm$12;

    .prologue
    .line 1163
    iput-object p1, p0, Lfcm$12$2;->a:Lfcm$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1167
    return-void
.end method
