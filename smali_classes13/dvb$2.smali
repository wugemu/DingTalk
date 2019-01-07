.class final Ldvb$2;
.super Ljava/lang/Object;
.source "DeleteMessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvb;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvb;


# direct methods
.method constructor <init>(Ldvb;)V
    .locals 0
    .param p1, "this$0"    # Ldvb;

    .prologue
    .line 41
    iput-object p1, p0, Ldvb$2;->a:Ldvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 44
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 45
    return-void
.end method
