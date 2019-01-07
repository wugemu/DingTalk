.class public Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.super Landroid/widget/RelativeLayout;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;,
        Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/app/Activity;

.field private C:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

.field private D:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Landroid/content/ClipboardManager;

.field private K:Ljava/lang/Runnable;

.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field public g:Landroid/media/SoundPool$OnLoadCompleteListener;

.field public h:Lewj;

.field public i:Landroid/media/SoundPool;

.field private k:Landroid/widget/ListView;

.field private l:Leuu;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->G:Z

    .line 126
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->I:Z

    .line 130
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->K:Ljava/lang/Runnable;

    .line 1315
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_dial_pad_v2:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1317
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    .line 1318
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e:Z

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->f:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1783
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g:Landroid/media/SoundPool$OnLoadCompleteListener;

    if-nez v0, :cond_1

    .line 1787
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$4;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1795
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    sget v2, Leuj$k;->dial:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->H:I

    .line 1323
    sget v0, Leuj$i;->conf_dial_input_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    .line 1324
    sget v0, Leuj$i;->conf_dial_pad_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a:Landroid/view/View;

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$6;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1331
    sget v0, Leuj$i;->conf_dial_list_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c:Landroid/view/View;

    .line 1332
    sget v0, Leuj$i;->conf_dial_result_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->k:Landroid/widget/ListView;

    .line 1333
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1379
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$8;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1392
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1405
    sget v0, Leuj$i;->conf_dial_input_et:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    .line 1406
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1407
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$10;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1429
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$11;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Landroid/widget/EditText;Z)V

    .line 1443
    sget v0, Leuj$i;->conf_dial_num0:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->p:Landroid/view/View;

    .line 1444
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1445
    sget v0, Leuj$i;->conf_dial_num1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->q:Landroid/view/View;

    .line 1446
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    sget v0, Leuj$i;->conf_dial_num2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->r:Landroid/view/View;

    .line 1448
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1449
    sget v0, Leuj$i;->conf_dial_num3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->s:Landroid/view/View;

    .line 1450
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    sget v0, Leuj$i;->conf_dial_num4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->t:Landroid/view/View;

    .line 1452
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    sget v0, Leuj$i;->conf_dial_num5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->u:Landroid/view/View;

    .line 1454
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    sget v0, Leuj$i;->conf_dial_num6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->v:Landroid/view/View;

    .line 1456
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1457
    sget v0, Leuj$i;->conf_dial_num7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->w:Landroid/view/View;

    .line 1458
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    sget v0, Leuj$i;->conf_dial_num8:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->x:Landroid/view/View;

    .line 1460
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    sget v0, Leuj$i;->conf_dial_num9:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->y:Landroid/view/View;

    .line 1462
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->y:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    sget v0, Leuj$i;->conf_dial_paste:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->z:Landroid/view/View;

    .line 1464
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1466
    sget v0, Leuj$i;->conf_dial_delete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->m:Landroid/view/View;

    .line 1467
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->m:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1480
    sget v0, Leuj$i;->conf_dial_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->n:Landroid/view/View;

    .line 1481
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 1484
    new-instance v1, Leuu;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Leuu;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l:Leuu;

    .line 1485
    new-instance v1, Lewj;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    .line 1490
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l:Leuu;

    if-eqz v0, :cond_3

    .line 1491
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l:Leuu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    :cond_3
    return-void

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->B:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1487
    new-instance v0, Leuu;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->B:Landroid/app/Activity;

    invoke-direct {v0, v1}, Leuu;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l:Leuu;

    .line 1488
    new-instance v0, Lewj;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->B:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->F:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/widget/EditText;Z)V
    .locals 8
    .param p1, "edittext"    # Landroid/widget/EditText;
    .param p2, "forbidCopy"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 819
    if-nez p1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 822
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    .line 823
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 837
    :goto_1
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 838
    new-instance v3, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$5;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 859
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 825
    :cond_1
    const-class v0, Landroid/widget/EditText;

    .line 828
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v3, "setShowSoftInputOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 829
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 830
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 831
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 77
    .line 3684
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3687
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create sys call "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 77
    .line 5668
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5669
    :cond_0
    :goto_0
    return-void

    .line 5671
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create call to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5672
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5673
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 5675
    :cond_2
    const/4 v0, 0x1

    iput v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 5676
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 5677
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0, p1, v1, p2}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    .prologue
    .line 77
    .line 2578
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->f:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-nez v0, :cond_1

    .line 2582
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    const-string/jumbo v2, "Show dial pad menu fail"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :goto_0
    return-void

    .line 2585
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2587
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;)V

    invoke-static {v1}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v1

    .line 2646
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    new-instance v4, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;)V

    invoke-virtual {v2, v3, v4}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v2

    .line 2657
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2658
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2659
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    sget-object v3, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->KEY_PAD:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 3411
    if-eqz v3, :cond_2

    .line 3412
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3413
    const-string/jumbo v5, "type"

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v5, "phone_calllist_click"

    invoke-interface {v3, v5, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3420
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    .line 4534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4537
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    .line 4538
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4539
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4540
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "do search key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->K:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 496
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    if-nez v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v4, "phone_dialplate_dial_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 502
    .local v0, "c":I
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "p":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 507
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 509
    .local v1, "len":I
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    add-int v4, v0, v1

    add-int v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->G:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->I:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->F:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 770
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    const/4 v3, 0x0

    .line 77
    .line 2546
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2547
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    .line 2551
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;)V

    .line 2552
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2553
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->c:Ljava/lang/String;

    .line 2555
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2566
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->G:Z

    .line 2567
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l:Leuu;

    if-eqz v0, :cond_3

    .line 2568
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$13;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_3
    return-void

    .line 2557
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2558
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    .line 2559
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    if-ne v1, v2, :cond_2

    .line 2561
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    return-object v0
.end method

.method private getClipData()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 864
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->J:Landroid/content/ClipboardManager;

    if-nez v3, :cond_0

    .line 865
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    iput-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->J:Landroid/content/ClipboardManager;

    .line 867
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->J:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-nez v3, :cond_2

    .line 868
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    const-string/jumbo v5, "No clip data"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v1, 0x0

    .line 879
    :cond_1
    :goto_0
    return-object v1

    .line 871
    :cond_2
    const/4 v1, 0x0

    .line 872
    .local v1, "clipResStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->J:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 873
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 874
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 875
    .local v2, "dataItem":Landroid/content/ClipData$Item;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 876
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->f:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    .line 3692
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a()V

    .line 3693
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->D:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    if-eqz v0, :cond_0

    .line 3694
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->D:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;->a(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->D:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->C:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    const/16 v1, 0x8

    .line 77
    .line 4774
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4775
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4776
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4777
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4778
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Leuu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l:Leuu;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 723
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 727
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 739
    const/4 v0, 0x1

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c:Landroid/view/View;

    .line 747
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a:Landroid/view/View;

    .line 748
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 749
    :cond_0
    const/4 v0, 0x1

    .line 751
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method public getDialPad()Landroid/view/View;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x1000

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v8, v0

    .line 235
    .local v8, "id":J
    sget v0, Leuj$i;->conf_dial_num0:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget v0, Leuj$i;->conf_dial_num1:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    sget v0, Leuj$i;->conf_dial_num2:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_3
    sget v0, Leuj$i;->conf_dial_num3:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_4
    sget v0, Leuj$i;->conf_dial_num4:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_5
    sget v0, Leuj$i;->conf_dial_num5:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_6
    sget v0, Leuj$i;->conf_dial_num6:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_7

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_7
    sget v0, Leuj$i;->conf_dial_num7:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_8

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_8
    sget v0, Leuj$i;->conf_dial_num8:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_9
    sget v0, Leuj$i;->conf_dial_num9:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_a
    sget v0, Leuj$i;->conf_dial_paste:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_c

    .line 286
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_dial_board_paste_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->getClipData()Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "clipStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {v6}, Leyv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 294
    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e()V

    goto/16 :goto_0

    .line 298
    :cond_b
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    const-string/jumbo v2, "No number in clip data"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v6    # "clipStr":Ljava/lang/String;
    :cond_c
    sget v0, Leuj$i;->conf_dial_delete:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_d

    .line 2512
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 2516
    if-lez v0, :cond_0

    .line 2517
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2520
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2521
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    add-int/lit8 v7, v0, -0x1

    .line 2522
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2521
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 2525
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->C:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    if-eqz v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->C:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;->a()V

    goto/16 :goto_0

    .line 303
    :cond_d
    sget v0, Leuj$i;->conf_dial_add:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Add into contact by \'+\' "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 308
    .local v4, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->E:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->A:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    goto/16 :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->B:Landroid/app/Activity;

    .line 700
    return-void
.end method

.method public setOnNumberChangedListener(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->C:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    .line 709
    return-void
.end method

.method public setOnShowChangedListener(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->D:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    .line 713
    return-void
.end method
