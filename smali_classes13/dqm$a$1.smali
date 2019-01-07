.class final Ldqm$a$1;
.super Ljava/lang/Object;
.source "BurnChatModel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqm$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqm$a;


# direct methods
.method constructor <init>(Ldqm$a;)V
    .locals 0
    .param p1, "this$0"    # Ldqm$a;

    .prologue
    .line 137
    iput-object p1, p0, Ldqm$a$1;->a:Ldqm$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 140
    iget-object v0, p0, Ldqm$a$1;->a:Ldqm$a;

    invoke-virtual {v0}, Ldqm$a;->a()V

    .line 141
    return-void
.end method
