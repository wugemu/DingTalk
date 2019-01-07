.class public final Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;
.super Ljava/lang/Object;
.source "CircleInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;->a:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;->b:Ljava/lang/String;

    .line 144
    return-void
.end method
