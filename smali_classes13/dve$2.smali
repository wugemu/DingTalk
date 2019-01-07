.class final Ldve$2;
.super Ljava/lang/Object;
.source "ForwardCombineDirectSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldve;


# direct methods
.method constructor <init>(Ldve;)V
    .locals 0
    .param p1, "this$0"    # Ldve;

    .prologue
    .line 94
    iput-object p1, p0, Ldve$2;->a:Ldve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Ldve$2;->a:Ldve;

    iget-object v0, v0, Ldve;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    return-void
.end method
