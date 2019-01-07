.class public final Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;,
        Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;,
        Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

.field public f:Ljava/lang/String;

.field public g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    .line 29
    return-void
.end method
