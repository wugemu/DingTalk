.class final Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$2;
.super Ljava/lang/Object;
.source "AbsorberController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$2;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$2;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    .line 1014
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->e()V

    .line 97
    return-void
.end method
