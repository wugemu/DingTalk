.class final Lfap$2;
.super Lcmg;
.source "FriendAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfap;->b(JILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdq;",
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;",
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
    .line 245
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    iput-object p1, p0, Lfap$2;->a:Lfap;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, Lcdq;

    .line 1248
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->fromIdl(Lcdq;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    move-result-object v0

    .line 245
    return-object v0
.end method
