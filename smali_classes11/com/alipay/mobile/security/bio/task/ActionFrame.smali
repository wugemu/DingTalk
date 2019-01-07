.class public Lcom/alipay/mobile/security/bio/task/ActionFrame;
.super Ljava/lang/Object;
.source "ActionFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/alipay/mobile/security/bio/task/ActionFrame;, "Lcom/alipay/mobile/security/bio/task/ActionFrame<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/task/ActionFrame;->a:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/alipay/mobile/security/bio/task/ActionFrame;, "Lcom/alipay/mobile/security/bio/task/ActionFrame<TT;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/task/ActionFrame;->a:Ljava/lang/Object;

    return-object v0
.end method
