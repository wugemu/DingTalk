.class Lcom/alibaba/wukong/auth/g$10;
.super Lifm;
.source "DefaultAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->a(ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lifm",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;
    .param p3, "mainThread"    # Z

    .prologue
    .line 566
    .local p2, "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$10;->B:Lcom/alibaba/wukong/auth/g;

    invoke-direct {p0, p2, p3}, Lifm;-><init>(Lcom/alibaba/wukong/Callback;Z)V

    return-void
.end method
