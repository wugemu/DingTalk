.class final Lcbs$9;
.super Lcmg;
.source "RedPacketsRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLcbe;JLjava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcay;",
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbs;


# direct methods
.method constructor <init>(Lcbs;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcbs;

    .prologue
    .line 136
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;>;"
    iput-object p1, p0, Lcbs$9;->a:Lcbs;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcay;

    .line 1139
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->fromIDL(Lcay;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v0

    .line 136
    return-object v0
.end method
