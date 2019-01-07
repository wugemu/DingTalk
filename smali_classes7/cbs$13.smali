.class public final Lcbs$13;
.super Lcmg;
.source "RedPacketsRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcas;",
        "Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbs;


# direct methods
.method public constructor <init>(Lcbs;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcbs;

    .prologue
    .line 480
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;>;"
    iput-object p1, p0, Lcbs$13;->a:Lcbs;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    check-cast p1, Lcas;

    .line 1483
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;->fromIDL(Lcas;)Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;

    move-result-object v0

    .line 480
    return-object v0
.end method
