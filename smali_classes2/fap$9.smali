.class final Lfap$9;
.super Lcmg;
.source "FriendAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfap;->d(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdp;",
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfap;


# direct methods
.method constructor <init>(Lfap;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfap;

    .prologue
    .line 493
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    iput-object p1, p0, Lfap$9;->a:Lfap;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 493
    check-cast p1, Lcdp;

    .line 1496
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->fromIdl(Lcdp;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    move-result-object v0

    .line 493
    return-object v0
.end method
