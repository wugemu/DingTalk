.class public final Lcbs$23;
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
        "Lcbf;",
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;",
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
    .line 264
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;>;"
    iput-object p1, p0, Lcbs$23;->a:Lcbs;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    check-cast p1, Lcbf;

    .line 1267
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;->fromIDL(Lcbf;)Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;

    move-result-object v0

    .line 264
    return-object v0
.end method
