.class public abstract Lcuj;
.super Lctv;
.source "ConfResultHolder.java"


# static fields
.field private static final Y:Ljava/lang/String;


# instance fields
.field protected S:Landroid/app/Activity;

.field protected a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcuj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcuj;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 60
    return-void
.end method

.method public static d(J)Ljava/lang/String;
    .locals 14
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v12, 0xe10

    const-wide/16 v6, 0x3c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    div-long v0, p0, v12

    .line 148
    .local v0, "elapsedHours":J
    rem-long/2addr p0, v12

    .line 150
    div-long v2, p0, v6

    .line 151
    .local v2, "elapsedMinutes":J
    rem-long/2addr p0, v6

    .line 154
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    .line 155
    const-string/jumbo v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 157
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcuj;->Y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 137
    sget v0, Lctk$f;->chatting_content_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcuj;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 138
    sget v0, Lctk$f;->chatting_content_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuj;->b:Landroid/widget/TextView;

    .line 140
    :cond_0
    invoke-virtual {p0, p2}, Lcuj;->c(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iput-object p1, p0, Lcuj;->S:Landroid/app/Activity;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcuj;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 66
    iget-object v0, p0, Lcuj;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcuj;->r:Landroid/view/View;

    new-instance v1, Lcuj$1;

    invoke-direct {v1, p0, p2, p1}, Lcuj$1;-><init>(Lcuj;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcuj;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_tel:I

    invoke-static {v2}, Lcuj;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcuj;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcuj;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_message_type_tel:I

    invoke-static {v2}, Lcuj;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcuj;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcuj;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
