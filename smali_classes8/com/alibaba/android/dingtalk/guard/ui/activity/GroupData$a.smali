.class public final Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;
.super Ljava/lang/Object;
.source "GroupData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)I
    .locals 2
    .param p0, "groupData"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .prologue
    const/4 v0, 0x0

    .line 175
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isMainOrg:Z

    if-eqz v1, :cond_2

    .line 179
    const/16 v0, 0xa

    goto :goto_0

    .line 182
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v1, :cond_0

    .line 183
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 141
    check-cast p1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    check-cast p2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 1143
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 1147
    :cond_0
    if-nez p1, :cond_2

    .line 1162
    :cond_1
    :goto_0
    return v0

    .line 1151
    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    .line 1152
    goto :goto_0

    .line 1155
    :cond_3
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)I

    move-result v2

    .line 1156
    invoke-static {p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)I

    move-result v3

    .line 1157
    if-gt v2, v3, :cond_1

    .line 1161
    if-ge v2, v3, :cond_4

    move v0, v1

    .line 1162
    goto :goto_0

    .line 1165
    :cond_4
    const/4 v0, 0x0

    .line 141
    goto :goto_0
.end method
