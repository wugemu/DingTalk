.class public final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZJLjava/lang/String;)V
    .locals 0
    .param p1, "isSend"    # Z
    .param p2, "sender"    # J
    .param p4, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;->a:Z

    .line 210
    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;->b:J

    .line 211
    iput-object p4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;->c:Ljava/lang/String;

    .line 212
    return-void
.end method
