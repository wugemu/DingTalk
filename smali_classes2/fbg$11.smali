.class final Lfbg$11;
.super Lcmg;
.source "UserProfileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbg;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdz;",
        "Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbg;


# direct methods
.method constructor <init>(Lfbg;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 483
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;>;"
    iput-object p1, p0, Lfbg$11;->a:Lfbg;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 483
    check-cast p1, Lcdz;

    .line 1487
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->fromIdlModelStrict(Lcdz;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    .line 483
    return-object v0
.end method
