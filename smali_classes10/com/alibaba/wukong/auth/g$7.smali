.class Lcom/alibaba/wukong/auth/g$7;
.super Lifm;
.source "DefaultAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lifm",
        "<",
        "Lcom/alibaba/wukong/auth/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 350
    .local p2, "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/o;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$7;->B:Lcom/alibaba/wukong/auth/g;

    invoke-direct {p0, p2}, Lifm;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method
