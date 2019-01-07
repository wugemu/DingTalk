.class public final Lfja;
.super Ljava/lang/Object;
.source "CrmPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lfir;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lfja;->d:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfja;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;JLjava/lang/String;Z)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "staffId"    # Ljava/lang/String;
    .param p5, "getMore"    # Z

    .prologue
    .line 58
    new-instance v6, Lfja$1;

    invoke-direct {v6, p0, p5}, Lfja$1;-><init>(Lfja;Z)V

    .line 97
    .local v6, "apiEventListener":Lcma;
    if-eqz p1, :cond_0

    .line 98
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcma;

    invoke-interface {v0, v6, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;
    check-cast v6, Lcma;

    .line 100
    .restart local v6    # "apiEventListener":Lcma;
    :cond_0
    invoke-static {}, Lfml;->a()Lfmk;

    move-result-object v0

    if-eqz p5, :cond_1

    iget-wide v4, p0, Lfja;->c:J

    :goto_0
    move-wide v1, p2

    move-object v3, p4

    invoke-interface/range {v0 .. v6}, Lfmk;->a(JLjava/lang/String;JLcma;)V

    .line 102
    return-void

    .line 100
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method
