.class final Lfak$40;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1387
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    iput-object p1, p0, Lfak$40;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1387
    check-cast p1, Ljava/util/List;

    return-object p1
.end method