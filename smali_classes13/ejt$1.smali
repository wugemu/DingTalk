.class public final Lejt$1;
.super Ljava/lang/Object;
.source "HomeOADropMenuAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejt;


# direct methods
.method public constructor <init>(Lejt;)V
    .locals 0
    .param p1, "this$0"    # Lejt;

    .prologue
    .line 69
    iput-object p1, p0, Lejt$1;->a:Lejt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 69
    check-cast p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    check-cast p2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1072
    if-nez p1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return v0

    .line 1076
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 1077
    goto :goto_0

    .line 1080
    :cond_2
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v2

    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lelp;->a(Ljava/lang/Long;)I

    move-result v2

    .line 1081
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v3

    iget-wide v4, p2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lelp;->a(Ljava/lang/Long;)I

    move-result v3

    .line 1082
    if-gt v3, v2, :cond_0

    .line 1084
    if-ge v3, v2, :cond_3

    move v0, v1

    .line 1085
    goto :goto_0

    .line 1087
    :cond_3
    const/4 v0, 0x0

    .line 69
    goto :goto_0
.end method
