.class Lcom/alibaba/doraemon/impl/eventbus/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field public mArgs:[Ljava/lang/Object;

.field public mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    .line 11
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mArgs:[Ljava/lang/Object;

    .line 12
    return-void
.end method
