.class public final Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
.super Ljava/lang/Object;
.source "TeleConfRecordObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;,
        Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

.field public h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 1
    .param p1, "recordItem"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {v0, p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 48
    iget v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->l:I

    iput v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 42
    return-void
.end method
