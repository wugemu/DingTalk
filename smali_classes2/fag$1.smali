.class final Lfag$1;
.super Lcmg;
.source "BusinessCardAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfag;->a(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfag;


# direct methods
.method constructor <init>(Lfag;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfag;

    .prologue
    .line 49
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfag$1;->a:Lfag;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
