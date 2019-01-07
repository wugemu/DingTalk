.class final Lfan$1;
.super Lcmg;
.source "DingTalkI18nCommonAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfan;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfqp;",
        "Lcom/alibaba/android/user/model/TimezoneInfosObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfan;


# direct methods
.method constructor <init>(Lfan;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfan;

    .prologue
    .line 34
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/TimezoneInfosObject;>;"
    iput-object p1, p0, Lfan$1;->a:Lfan;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lfqp;

    .line 1037
    invoke-static {p1}, Lcom/alibaba/android/user/model/TimezoneInfosObject;->fromIDL(Lfqp;)Lcom/alibaba/android/user/model/TimezoneInfosObject;

    move-result-object v0

    .line 34
    return-object v0
.end method
