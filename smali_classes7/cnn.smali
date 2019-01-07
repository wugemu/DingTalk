.class public final Lcnn;
.super Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
.source "NewUnreadIndicator.java"


# static fields
.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "NEW"

    sput-object v0, Lcnn;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isIndicator"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;-><init>(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcnn;->b:Ljava/lang/String;

    return-object v0
.end method
