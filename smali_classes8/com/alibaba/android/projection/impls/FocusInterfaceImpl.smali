.class public Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;
.super Lcom/alibaba/dingtalk/projection/FocusInterface;
.source "FocusInterfaceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/dingtalk/projection/FocusInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/projection_home"

    new-instance v2, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl$1;-><init>(Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "callbacks":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {p1}, Lehu;->a(Lcma;)V

    .line 102
    return-void
.end method

.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "projecting_close"

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    .local v0, "isFuncClose":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v1

    .line 55
    .local v1, "isNationalUser":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "projecting_white_enabled"

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 57
    .local v2, "isWhiteListOpen":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Legq;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "No support"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "pwp_client"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 89
    :cond_2
    invoke-static {}, Lehv;->a()Lehv;

    move-result-object v0

    .line 1096
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "prj_codec_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 1097
    invoke-static {v1}, Lehv;->a(I)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    move-result-object v1

    iput-object v1, v0, Lehv;->a:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 1054
    new-instance v1, Legu;

    invoke-direct {v1}, Legu;-><init>()V

    .line 1055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Legu;->a:Ljava/util/List;

    .line 1056
    iget-object v2, v1, Legu;->a:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/projection/data/SvrConfigEnum;->PROJECTION_ENCODE_MODE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/projection/data/SvrConfigEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v2, Lehv$1;

    invoke-direct {v2, v0}, Lehv$1;-><init>(Lehv;)V

    invoke-static {v1, v2}, Lehu;->a(Legu;Lcma;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 95
    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a()V

    .line 96
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 41
    return-void
.end method

.method public onApplicationCreate()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
