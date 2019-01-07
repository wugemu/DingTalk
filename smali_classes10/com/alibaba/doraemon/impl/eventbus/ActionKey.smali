.class public Lcom/alibaba/doraemon/impl/eventbus/ActionKey;
.super Ljava/lang/Object;
.source "ActionKey.java"


# instance fields
.field public mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/ActionKey;->mMethodName:Ljava/lang/String;

    .line 13
    return-void
.end method
