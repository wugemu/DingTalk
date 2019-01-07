.class final Lfak$32;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->b(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcfz;",
        "Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1257
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;>;"
    iput-object p1, p0, Lfak$32;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1257
    check-cast p1, Lcfz;

    .line 2261
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->fromIDLModel(Lcfz;)Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;

    move-result-object v0

    .line 1257
    return-object v0
.end method
