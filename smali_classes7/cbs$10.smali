.class public final Lcbs$10;
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
        "Lcat;",
        "Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;",
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
    .line 438
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;>;"
    iput-object p1, p0, Lcbs$10;->a:Lcbs;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 438
    check-cast p1, Lcat;

    .line 1441
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;->fromIDL(Lcat;)Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;

    move-result-object v0

    .line 438
    return-object v0
.end method
