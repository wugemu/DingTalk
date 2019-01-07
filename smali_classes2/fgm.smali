.class public final Lfgm;
.super Ljava/lang/Object;
.source "FriendRequestListItem.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;


# direct methods
.method public constructor <init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "i"    # I
    .param p3, "groupFirst"    # Z
    .param p4, "groupLast"    # Z
    .param p5, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lfgm;->a:I

    .line 33
    iput p2, p0, Lfgm;->b:I

    .line 34
    iput-boolean p3, p0, Lfgm;->c:Z

    .line 35
    iput-boolean p4, p0, Lfgm;->d:Z

    .line 36
    iput-object p5, p0, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 37
    return-void
.end method
