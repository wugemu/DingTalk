.class final Lrx/subjects/SubjectSubscriptionManager$1;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Llgy;Lrx/subjects/SubjectSubscriptionManager$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/subjects/SubjectSubscriptionManager$b;

.field final synthetic b:Lrx/subjects/SubjectSubscriptionManager;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$b;)V
    .locals 0
    .param p1, "this$0"    # Lrx/subjects/SubjectSubscriptionManager;

    .prologue
    .line 67
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$1;, "Lrx/subjects/SubjectSubscriptionManager$1;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$1;->b:Lrx/subjects/SubjectSubscriptionManager;

    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$1;->a:Lrx/subjects/SubjectSubscriptionManager$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$1;, "Lrx/subjects/SubjectSubscriptionManager$1;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$1;->b:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager$1;->a:Lrx/subjects/SubjectSubscriptionManager$b;

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$b;)V

    .line 71
    return-void
.end method
